cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4727"
  sha256 arm:   "026bb10a320ba5bb1c0e3199c9a73c5abb2ad8480bc3bfaa6c2d434f346a3274",
         intel: "38c9cef5df7f17423af0a572fcc725543df73fa22b5b5e723d25e664410e746b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
