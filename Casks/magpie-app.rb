cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4361"
  sha256 arm:   "94352e3a240c0a3aab998d36c027f467aa075fecd8e7f036236104ecd5c69309",
         intel: "ae5119ba36e0f2af176c0b8747a434760afdeaf0eaa5f40d2c8bcebf61d3fb65"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
