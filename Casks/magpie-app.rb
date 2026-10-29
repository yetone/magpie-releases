cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2023"
  sha256 arm:   "833de3b6c8053b8d1a05d6db478c0a7761865af5b95d02cb03c2a353bd0bf60b",
         intel: "6f91a4c021ba0cc79a1832f127b51b780d8205256485206d60b0aa855391d205"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
