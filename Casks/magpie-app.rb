cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.918"
  sha256 arm:   "74dc1b914fe90124b4c7050b7ad307fd7a5edb8708f6ab783c433833507230a5",
         intel: "93481dee395faebf8b41fba2b9957cc0f376d7d0f098679033eeafb45a992807"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
