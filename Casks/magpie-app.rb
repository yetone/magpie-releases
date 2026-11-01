cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2618"
  sha256 arm:   "77109f545faae0dce17f70a5f1e668c4f537ef4555479bde706532915c4870a2",
         intel: "31af99fbb1d87573124ed3c66af79c6646952df43c053d1c9d862ed93807b09c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
