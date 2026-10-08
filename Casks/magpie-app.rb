cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1113"
  sha256 arm:   "eb9f9ed77ea2ef8b6b59ab068afdde430407aae6bc92d4a040d0a29d67b4121c",
         intel: "8b906d6818feaad3e8870b97d45397a8d4d0e8ca4bd59f02cf3a8552574c2ea1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
