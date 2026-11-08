cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3327"
  sha256 arm:   "206dd566d4cf75be1b4e04af789e5c431ea8666a47ab6186baafbb1b3bebb352",
         intel: "535c20632b85fb5ccfb882d3a9dd599bd1a5d75cfaaecbccbddc51a975bfbba5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
