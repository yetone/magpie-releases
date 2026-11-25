cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4808"
  sha256 arm:   "5d11b1f3e06d837b19a8a4f9e81deccf340b2cdcc70eb8dd773531c841171971",
         intel: "ab5d0f936c12843249e6b34bcb98717318cd46567121da8f46e112fafedf0a10"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
