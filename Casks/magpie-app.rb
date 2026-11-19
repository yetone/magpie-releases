cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4557"
  sha256 arm:   "206c07dfaa2e0bdc76cba847d0cc4f5300839d3add7b273240ed78422c92b887",
         intel: "0f4e485f598cc030be74c72afffe42dac8f0fb35bebb05368858ecd968959980"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
