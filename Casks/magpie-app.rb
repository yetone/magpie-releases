cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4215"
  sha256 arm:   "fd65173a1c2cec3ebea1e3089d74beca7e46441caf5714af396095d212bb2462",
         intel: "5e8c339947512980da4d42a5f6f86b1da912ce9fac0d85fc98b1acecbf68c75a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
