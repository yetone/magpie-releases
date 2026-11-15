cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4269"
  sha256 arm:   "f9f60c4c6425c2ccf3f0de780889697bb15259f2cdad32cd1afe204f0ede3839",
         intel: "d22f755a4e3b73a82899cfce927858ba81762f841bf7f1bdd260fcec0af49fa7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
