cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1853"
  sha256 arm:   "2b1731e20f326cd855627ad583445cd355898af7e7292552bb9ac47ed5a168c3",
         intel: "305ef7752da95c18ab44409dc38b52e4e4b51a2660e326affd619a47319a87eb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
