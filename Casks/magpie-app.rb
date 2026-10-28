cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1942"
  sha256 arm:   "12a5efc7cfff7e133d26008dd032aa9f5e632232e021f5f6e8e91bfa47aa116c",
         intel: "709ddc6e68bd147b7f38e05192a5af8d6fe1fbf03cb033e198784be7a58e8ff6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
