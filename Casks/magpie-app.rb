cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4797"
  sha256 arm:   "a875ef72742416bacb98e8cf7ce75548830a4fec02dc611b5145b5201938f4a4",
         intel: "3db8cb48bc5bbb6ed780850e35a0745041a6517946cbc4512d723f8eb322b4c6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
