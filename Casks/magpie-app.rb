cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.905"
  sha256 arm:   "184e7b3728ee0e478075a991172ea17c2fe3f065a9d917d41765f1cdb6f624ae",
         intel: "2621dd292b9fc19542972e10b1af9367befff9e7e7a5d9a360e4fa306b08ac1e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
