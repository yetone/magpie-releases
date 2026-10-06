cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1089"
  sha256 arm:   "e3e7b138529d3079fee01856b166f2ad5972ec52b7bdc8688e9da02ccf8ddbee",
         intel: "718cb03b33c52e679094e551146d7e2879cf68e126614698ce49730e9e705aed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
