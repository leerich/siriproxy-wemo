require 'cora'
require 'siri_objects'
require 'pp'
require 'curb'
require 'simple_upnp'

class SiriProxy::Plugin::Wemo < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
  end

  listen_for (/turn (on|off)(?: the)? (.*) switch/i) { |action, wemo| send_wemo_command(action, wemo) }
    
  def send_wemo_command(action, wemo)
    case action
    when "on"
      signal = 1
    when "off"
      signal = 0
    end
    include_location_details = true
    wemo_device = nil
    device_name = nil
    device_location = nil

    SimpleUpnp::Discovery.find do |device|
      device_json = device.to_json(include_location_details)
      if device_json['root']
        if device_json['root']['device']
          if device_json['root']['device']['friendlyName']
            friendlyName = device_json['root']['device']['friendlyName']
            puts "WeMo Friendly Name: " + friendlyName
            if friendlyName.downcase == wemo.strip
              wemo_device = device
              device_name = friendlyName
              device_location = /https?:\/\/[\S]+\//.match(device.location)
              break
            end
          end
        end
      end
    end
    if wemo_device
      puts device_name + ' ' + device_location.to_s
      say "Turning #{action} the #{wemo} switch"

      c = Curl::Easy.new(device_location.to_s + 'upnp/control/basicevent1')
      c.headers["Content-type"] = 'text/xml; charset="utf-8"'
      c.headers["SOAPACTION"] = "\"urn:Belkin:service:basicevent:1#SetBinaryState\""
      c.verbose = false
      c.http_post("<?xml version='1.0' encoding='utf-8'?><s:Envelope xmlns:s='http://schemas.xmlsoap.org/soap/envelope/' s:encodingStyle='http://schemas.xmlsoap.org/soap/encoding/'><s:Body><u:SetBinaryState xmlns:u='urn:Belkin:service:basicevent:1'><BinaryState>#{signal}</BinaryState></u:SetBinaryState></s:Body></s:Envelope>")
      c.perform
      request_completed
    else
      say "I can't find the #{wemo}"
      request_completed
    end
  end
end
