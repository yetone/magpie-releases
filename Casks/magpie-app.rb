cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4447"
  sha256 arm:   "b0da380a83d4cf7a389bac6df252e7d1de9d172dba939de12f13b87905673000",
         intel: "df0fa7f29f24c475869d51cb6d612c316590602cdee244adcc480d336c9810e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
