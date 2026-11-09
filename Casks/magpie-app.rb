cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3406"
  sha256 arm:   "b47a02199d8e9c945aae90374a9c15c41fcc2d1a407c95a6ce5c03befcd9e07c",
         intel: "c47963a72cfd556b7242cb20b7b209e8b7e1bbaf387282741818045cbeef0edf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
