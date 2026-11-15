cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4261"
  sha256 arm:   "a77c071cb95ed9b55ac8f5fc7aff6658ab63194ba5804fcbd8683c8abdb623ff",
         intel: "829fd1628e6ef007a4d40ffe32b7128d0e2b0c25a4a683400f49244950718f04"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
