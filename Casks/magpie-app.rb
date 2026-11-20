cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4607"
  sha256 arm:   "dab7a4df7ac568c7a95d99a7eae576da4b5ea0a3f0c72990396ae9825bd02a8c",
         intel: "80c3fc09b5555a10d4ebabeb87b628b9e3a7093123164bbf3775d5337bac72ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
