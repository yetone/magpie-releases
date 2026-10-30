cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2260"
  sha256 arm:   "87a1ab67bd50e05f9cdc86a7143577e5c2d46843568fe5ea766c495aaf92f987",
         intel: "cf4d2576468369ece39f15098395ba4bc7d875a7adc18eabe90fc3b01c8f2399"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
