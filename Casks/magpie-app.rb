cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3809"
  sha256 arm:   "1fe63a2baa746780129e1a71b751729f3f910a6bc0579335bc0159f633704cba",
         intel: "c41df127316ee831ee533d55424592d0407654d1739c6e6e7ff5a89ff72bdcd3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
