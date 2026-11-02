cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2754"
  sha256 arm:   "ee3df2f6d45f5765d4e62cf1968ab133ab9676d445ddedb349ba3a849b8ca5f2",
         intel: "9e8fa6edd697892b7cc03dbdaf9e99bc7781c4c5459d1efe5603bdec1b02f5df"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
