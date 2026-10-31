cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2468"
  sha256 arm:   "f1e657dc9ea89909979a366a1bd510961c5a5f34ce4b0c09d936c7a773b04356",
         intel: "44c381376fd7affd48d7a10b4a6e2c0ffcf1e314ffcb227a123b8e48c72f0df1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
