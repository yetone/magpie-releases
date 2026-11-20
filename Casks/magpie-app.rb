cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4621"
  sha256 arm:   "0621abe3ff4e70cfefe4b38fd292699deccf2a9dc245c57dafad3e932e1e4a1f",
         intel: "cd720084c3d959c3210dd0a86152b86800e7665327431eaa17975b6a2f3a6805"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
