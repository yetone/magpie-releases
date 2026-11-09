cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3388"
  sha256 arm:   "4909446d6fc1ec4fd80c886e4ef8ff7561b697460d001e9ed35a0d0b735b0baf",
         intel: "34501f42fcaf285d6180836578d59cdb7b02ecd8b65f33c10671b4c5d4545d19"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
