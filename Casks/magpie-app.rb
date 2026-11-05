cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3054"
  sha256 arm:   "1cd20a1f9ec0ee253460189ef10be01d2576bfd91b85acadc42215c13a6c3b31",
         intel: "53030fd6121d35c354b6076e9ddfb24f7fdf16beeaa15f2b5b8e1538501c8efd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
