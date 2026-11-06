cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3173"
  sha256 arm:   "03980fd03b6976f69920a450c62791fa3e79d9221e78dd56dfe2f570b3ecfdbe",
         intel: "9c2b01ac43df10f3f33ca9d7f3ec99427240c48b3bcbcc5a71c111622e68b616"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
