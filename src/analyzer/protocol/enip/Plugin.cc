#include "plugin/Plugin.h"

#include "ENIP.h"

namespace plugin {
namespace Bro_ENIP {

class Plugin : public plugin::Plugin {
public:
	plugin::Configuration Configure()
		{
		AddComponent(new ::analyzer::Component("ENIP",
		             ::analyzer::enip::ENIP_Analyzer::InstantiateAnalyzer));

		plugin::Configuration config;
		config.name = "Bro::ENIP";
		config.description = "EtherNet/IP Protocol analyzer";
		return config;
		}
} plugin;

}
}
