cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3899"
  sha256 arm:   "422f7c78ac919c8e16566edc91c209ffe1d54fe549a8fd786755539c4ae0b531",
         intel: "f8fb09d27a6ab15776d78f44a02bb815e11917aa7c77a8da1988b30952d05e27"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
