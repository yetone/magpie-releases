cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1884"
  sha256 arm:   "1d651d460acf071d59ddd056766228f279331a01dcee7e474d29a06488d0b6ff",
         intel: "62d6b3de7355b11fa83b896c852fb4ba1115493d593b4386a586fee3b9d9fefc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
