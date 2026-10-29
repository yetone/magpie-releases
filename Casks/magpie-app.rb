cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2062"
  sha256 arm:   "80e92bdb4559c197e21a1ca14cca3b37ebca42d58a7d14114f415af91d40ecee",
         intel: "4ec630b5bdcb67a4c73e677580be1cc2d79471dda1438b1d5220bf0be10e0713"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
