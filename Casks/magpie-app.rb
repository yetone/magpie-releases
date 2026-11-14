cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4119"
  sha256 arm:   "798ea1988f59ca1bc03472a8abe8ae15a2b9c2ccd1be56aa53803cb0762a6150",
         intel: "42151755184fadf5f288c642edae09f77ea76e84fdcfdc4df5fe027673e03859"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
