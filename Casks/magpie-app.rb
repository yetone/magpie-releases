cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3420"
  sha256 arm:   "49f8a243ac36538ec9429adacb62eceb4745a245b7304edfb39778007eae9ba6",
         intel: "d3f55142d55d0364c46a3b7f6f143d6f3807f092cbbd974045100fe92ea66b38"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
