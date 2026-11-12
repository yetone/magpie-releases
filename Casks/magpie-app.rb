cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3884"
  sha256 arm:   "4964cd2611ea4aa0cd1630f06748b52157e953deab0af5afa9d66daa61f6b662",
         intel: "4bb809d8349ee7986df3426c18c16e53231540406c5cf9da0fefbf87e153834c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
