cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4969"
  sha256 arm:   "ce7fc21515daf5f456acd7f99310273bf9397decca11baf6ad7b95c3a2d75b9e",
         intel: "7cf6db2ecfaaf91360b2a1a857b408810af77f6eb4de447a2cdb6ff8857f517a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
