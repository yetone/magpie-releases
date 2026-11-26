cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4857"
  sha256 arm:   "70463bffa3e34f1a0253b35f3d20fd5cc32a4059143e8890b0bfd514f77d68a7",
         intel: "8dce7f1fdc337d172b80bf59abca73c0cc2ec37c0340316febf31fc26b34b2e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
