cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2573"
  sha256 arm:   "8a356510012ff75eae234125e66ed1c41b1687f65532dcc4a98d529d5e6b5995",
         intel: "2e43caf3f9fdc562f9abd51ea16608cfb016dab8c4e66ef3449069f9d75277ac"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
