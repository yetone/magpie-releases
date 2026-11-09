cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3398"
  sha256 arm:   "a35a5582000ba0cf9dfe516d19c7cfb072d244ce006d58c414a786d19fd9d3fd",
         intel: "e207f3ffe54a27271cfc846f37b11cd243084776354019e9df2e22fc984ec8bf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
