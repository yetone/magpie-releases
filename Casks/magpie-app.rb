cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2194"
  sha256 arm:   "40ca7e4de4e2d48cdc8923f59f54ff8e8d3f709b21d1cd84a028b68efc82a6bc",
         intel: "c6406d019bbb3beb7980f705946b69b390b6fdf29ae3236770851d27827a0687"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
