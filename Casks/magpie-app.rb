cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3740"
  sha256 arm:   "e2b4b4ea6cb598c4b263cbd0f6bdfc30db14785c814efa18d20d23cc73f2327b",
         intel: "16b3f5425d21bc872af50eea434b135a955f51b264b274361c9d2dbc20ad0f36"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
