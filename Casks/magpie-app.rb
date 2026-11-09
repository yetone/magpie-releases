cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3407"
  sha256 arm:   "6c3861c4444a501193b7f657ff556d59f858466eabcdb12a6787de9872e7cbbf",
         intel: "a7e7f55e2674db7b6ff55871b18f08d96e2b93a955c73a937146ebbae1dfee71"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
