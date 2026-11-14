cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4204"
  sha256 arm:   "e1893d30a475d48a6199b3fc406beeffe0a68de2bc84df2278c3a3cd43304289",
         intel: "0cfd3e7c0b08c669fc4faecc7be6be72e04b2c245db6e596a83c77bf5cf64d5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
