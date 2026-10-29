cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2097"
  sha256 arm:   "160f6540197f74a59cbd33e37b44c844d465b39f4b57fb23781f40bd07436d11",
         intel: "8b7501906c3e0bd9107e0e17b172990af71ba63baf8230655b376dfac032697c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
