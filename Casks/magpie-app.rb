cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4126"
  sha256 arm:   "e219250ad989298ba41f7f73c45c43821f43747f087f0426470e37696dc86abe",
         intel: "c5a65ae8da49180f2a686d3c83682f92fb2b3ac652b20386d8475d9005599c3f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
