cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3605"
  sha256 arm:   "5fa577068912e33d633ed3391128e43d96864d6f4d54c7420c19d97446e2f24c",
         intel: "d7da09f199514abed5919411b70f23e9c8003bec90d1d6c094a2dcc624f7390e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
