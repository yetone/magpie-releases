cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3603"
  sha256 arm:   "7bf01a4f8457fb51dfba663859a8160f943aa78290f9465d95659ac5e504fe0a",
         intel: "d6efbe865e7bd3f0f58b9636b3e95be29417ab9dface76834d150d117265e50d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
