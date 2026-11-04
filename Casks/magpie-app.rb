cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2952"
  sha256 arm:   "44cc09c7d989c8126bef07b0be3685f3a0271d7e249eaaee317c6f7607bc5aae",
         intel: "e978fe0af01abf155d6aab5975c41d04244d8630efeb7df35b897516212a19d3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
