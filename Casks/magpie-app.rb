cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4885"
  sha256 arm:   "f6049b5380682ca44f50a6069130be2664516cf0f3fb4b103c651b969b259ec7",
         intel: "f228d953d978c06f5fd496d34a1a98dff1010dc41f3711d32f2692bb74aad83f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
