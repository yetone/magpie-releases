cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2118"
  sha256 arm:   "e3277b516159db08ff440e36568e35e1d2627cd9018721e7d1125374861e4c7a",
         intel: "7cb02fe19db03c32b5ae1af96b24af324f5eea39c40542e0d7e9fc5d410a061c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
