cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4792"
  sha256 arm:   "a54860dbaff4539ab2bbad1cd29afe6b3618156566f6ea4c178ae731234995cd",
         intel: "e1d17ad70df81414844a1f52bd6982e7f92f1f11590fb81f1c8a22d74691cfd9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
