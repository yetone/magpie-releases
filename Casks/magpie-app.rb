cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.953"
  sha256 arm:   "9b6eae847d78e2801dbac5ab1cd5d81fcc15a27b5195e7540fd0040f9562d026",
         intel: "8a8bea1093a77b64c01edc84c975b8a800e312193b69c871eeec924dad75b63c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
