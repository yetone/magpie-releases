cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2496"
  sha256 arm:   "7445cecc914ddeaead0d1bd8694e54afe21b7dc2de89aa241beb1da1fba50147",
         intel: "599eb1622e084afd80e5188316eddb31557d64636ddad363cb9a5b41d6a0b44f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
