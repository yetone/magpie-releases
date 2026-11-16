cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4293"
  sha256 arm:   "eef969fdc3096354baee5ba6383e3d10bbda31d2138fac68cda9350e924bad10",
         intel: "d1d39039ba7df0a618667b25491e975a1241dd1e4d8a150b25f6ff9e8bef5aa6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
