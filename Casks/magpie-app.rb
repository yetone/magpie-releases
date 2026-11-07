cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3228"
  sha256 arm:   "10814042d4cc48082a597c433e5f5aa5acd6bac26a2a93883cd6bc4774818ddb",
         intel: "421ae4860b47d7cef899fce2ef00a5dd7c52a9f4e3255759b180e27f0de4f96c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
