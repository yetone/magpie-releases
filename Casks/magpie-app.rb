cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4351"
  sha256 arm:   "d629512d0d3be8e39145ce912f70e97b1c6eb67248d87114c4c4b436350050dd",
         intel: "bda7a768477424f9811f69a5ca9c80efeaf60d33d69efc46ba81cd13325eca82"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
