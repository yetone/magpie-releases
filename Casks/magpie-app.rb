cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1871"
  sha256 arm:   "99e196fbac2a0922cf9d105d9da0252f347e0c8496ba1e1fa0d064ed2d2d7fe1",
         intel: "4c631095f16627743a03f5dfec86c66d0545fa164b8635b81f0c7ae0d901b8f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
