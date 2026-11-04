cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2997"
  sha256 arm:   "cc217dac08d1d48257524b5c0ef56775fbcf4d0fea89b63b04ee9991093f6eb3",
         intel: "178fd705959f5f3fc7fe657f561abef55d0bc829649ba3c0f62015c8d0e4af03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
