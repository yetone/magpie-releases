cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3966"
  sha256 arm:   "8d9bf73ebd802ea8ecd6e4d39a34a1a80c1c7acec28bf329e072e9d9c96a275d",
         intel: "4301ace6d54ff19df5c8c1e4c5d61bf1ce0abd8dbda5aab46bb8f3585e89c26e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
